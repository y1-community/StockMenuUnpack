.class public Lnl/siegmann/epublib/epub/PackageDocumentReader;
.super Lnl/siegmann/epublib/epub/PackageDocumentBase;
.source "PackageDocumentReader.java"


# static fields
.field private static final POSSIBLE_NCX_ITEM_IDS:[Ljava/lang/String;

.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    const-class v0, Lnl/siegmann/epublib/epub/PackageDocumentReader;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lnl/siegmann/epublib/epub/PackageDocumentReader;->log:Lorg/slf4j/Logger;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "toc"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ncx"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ncxtoc"

    aput-object v2, v0, v1

    .line 46
    sput-object v0, Lnl/siegmann/epublib/epub/PackageDocumentReader;->POSSIBLE_NCX_ITEM_IDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lnl/siegmann/epublib/epub/PackageDocumentBase;-><init>()V

    return-void
.end method

.method static findCoverHrefs(Lorg/w3c/dom/Document;)Ljava/util/Set;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 324
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v2, "http://www.idpf.org/2007/opf"

    const-string v3, "meta"

    const-string v4, "name"

    const-string v5, "cover"

    const-string v6, "content"

    move-object v1, p0

    .line 327
    invoke-static/range {v1 .. v6}, Lnl/siegmann/epublib/epub/DOMUtil;->getFindAttributeValue(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-static {v1}, Lnl/siegmann/epublib/util/StringUtil;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v8, "http://www.idpf.org/2007/opf"

    const-string v9, "item"

    const-string v10, "id"

    const-string v12, "href"

    move-object v7, p0

    move-object v11, v1

    .line 332
    invoke-static/range {v7 .. v12}, Lnl/siegmann/epublib/epub/DOMUtil;->getFindAttributeValue(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 335
    invoke-static {v2}, Lnl/siegmann/epublib/util/StringUtil;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 336
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 338
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    const-string v5, "http://www.idpf.org/2007/opf"

    const-string v6, "reference"

    const-string v7, "type"

    const-string v8, "cover"

    const-string v9, "href"

    move-object v4, p0

    .line 342
    invoke-static/range {v4 .. v9}, Lnl/siegmann/epublib/epub/DOMUtil;->getFindAttributeValue(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 345
    invoke-static {p0}, Lnl/siegmann/epublib/util/StringUtil;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 346
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method static findTableOfContentsResource(Ljava/lang/String;Lnl/siegmann/epublib/domain/Resources;)Lnl/siegmann/epublib/domain/Resource;
    .locals 4

    .line 283
    invoke-static {p0}, Lnl/siegmann/epublib/util/StringUtil;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p1, p0}, Lnl/siegmann/epublib/domain/Resources;->getByIdOrHref(Ljava/lang/String;)Lnl/siegmann/epublib/domain/Resource;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 292
    :cond_1
    sget-object v0, Lnl/siegmann/epublib/service/MediatypeService;->NCX:Lnl/siegmann/epublib/domain/MediaType;

    invoke-virtual {p1, v0}, Lnl/siegmann/epublib/domain/Resources;->findFirstResourceByMediaType(Lnl/siegmann/epublib/domain/MediaType;)Lnl/siegmann/epublib/domain/Resource;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v1, 0x0

    .line 295
    :goto_1
    sget-object v2, Lnl/siegmann/epublib/epub/PackageDocumentReader;->POSSIBLE_NCX_ITEM_IDS:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 296
    aget-object v0, v2, v1

    invoke-virtual {p1, v0}, Lnl/siegmann/epublib/domain/Resources;->getByIdOrHref(Ljava/lang/String;)Lnl/siegmann/epublib/domain/Resource;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 300
    :cond_2
    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnl/siegmann/epublib/domain/Resources;->getByIdOrHref(Ljava/lang/String;)Lnl/siegmann/epublib/domain/Resource;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-nez v0, :cond_5

    .line 308
    sget-object p1, Lnl/siegmann/epublib/epub/PackageDocumentReader;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find table of contents resource. Tried resource with id \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\', "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "toc"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " and any NCX resource."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method static fixHrefs(Ljava/lang/String;Lnl/siegmann/epublib/domain/Resources;)Lnl/siegmann/epublib/domain/Resources;
    .locals 4

    const/16 v0, 0x2f

    .line 184
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    if-gez p0, :cond_0

    return-object p1

    .line 188
    :cond_0
    new-instance v0, Lnl/siegmann/epublib/domain/Resources;

    invoke-direct {v0}, Lnl/siegmann/epublib/domain/Resources;-><init>()V

    .line 189
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Resources;->getAll()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnl/siegmann/epublib/domain/Resource;

    .line 190
    invoke-virtual {v1}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnl/siegmann/epublib/util/StringUtil;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    invoke-virtual {v1}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, p0, :cond_1

    .line 192
    invoke-virtual {v1}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, p0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnl/siegmann/epublib/domain/Resource;->setHref(Ljava/lang/String;)V

    .line 194
    :cond_1
    invoke-virtual {v0, v1}, Lnl/siegmann/epublib/domain/Resources;->add(Lnl/siegmann/epublib/domain/Resource;)Lnl/siegmann/epublib/domain/Resource;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static generateSpineFromResources(Lnl/siegmann/epublib/domain/Resources;)Lnl/siegmann/epublib/domain/Spine;
    .locals 5

    .line 255
    new-instance v0, Lnl/siegmann/epublib/domain/Spine;

    invoke-direct {v0}, Lnl/siegmann/epublib/domain/Spine;-><init>()V

    .line 256
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 257
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Resources;->getAllHrefs()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 258
    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 259
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 260
    invoke-virtual {p0, v2}, Lnl/siegmann/epublib/domain/Resources;->getByHref(Ljava/lang/String;)Lnl/siegmann/epublib/domain/Resource;

    move-result-object v2

    .line 261
    invoke-virtual {v2}, Lnl/siegmann/epublib/domain/Resource;->getMediaType()Lnl/siegmann/epublib/domain/MediaType;

    move-result-object v3

    sget-object v4, Lnl/siegmann/epublib/service/MediatypeService;->NCX:Lnl/siegmann/epublib/domain/MediaType;

    if-ne v3, v4, :cond_1

    .line 262
    invoke-virtual {v0, v2}, Lnl/siegmann/epublib/domain/Spine;->setTocResource(Lnl/siegmann/epublib/domain/Resource;)V

    goto :goto_0

    .line 263
    :cond_1
    invoke-virtual {v2}, Lnl/siegmann/epublib/domain/Resource;->getMediaType()Lnl/siegmann/epublib/domain/MediaType;

    move-result-object v3

    sget-object v4, Lnl/siegmann/epublib/service/MediatypeService;->XHTML:Lnl/siegmann/epublib/domain/MediaType;

    if-ne v3, v4, :cond_0

    .line 264
    new-instance v3, Lnl/siegmann/epublib/domain/SpineReference;

    invoke-direct {v3, v2}, Lnl/siegmann/epublib/domain/SpineReference;-><init>(Lnl/siegmann/epublib/domain/Resource;)V

    invoke-virtual {v0, v3}, Lnl/siegmann/epublib/domain/Spine;->addSpineReference(Lnl/siegmann/epublib/domain/SpineReference;)Lnl/siegmann/epublib/domain/SpineReference;

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static read(Lnl/siegmann/epublib/domain/Resource;Lnl/siegmann/epublib/epub/EpubReader;Lnl/siegmann/epublib/domain/Book;Lnl/siegmann/epublib/domain/Resources;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 50
    invoke-static {p0}, Lnl/siegmann/epublib/util/ResourceUtil;->getAsDocument(Lnl/siegmann/epublib/domain/Resource;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Resource;->getHref()Ljava/lang/String;

    move-result-object p0

    .line 52
    invoke-static {p0, p3}, Lnl/siegmann/epublib/epub/PackageDocumentReader;->fixHrefs(Ljava/lang/String;Lnl/siegmann/epublib/domain/Resources;)Lnl/siegmann/epublib/domain/Resources;

    move-result-object p3

    .line 53
    invoke-static {v0, p1, p2, p3}, Lnl/siegmann/epublib/epub/PackageDocumentReader;->readGuide(Lorg/w3c/dom/Document;Lnl/siegmann/epublib/epub/EpubReader;Lnl/siegmann/epublib/domain/Book;Lnl/siegmann/epublib/domain/Resources;)V

    .line 56
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 58
    invoke-static {v0, p0, p1, p3, v1}, Lnl/siegmann/epublib/epub/PackageDocumentReader;->readManifest(Lorg/w3c/dom/Document;Ljava/lang/String;Lnl/siegmann/epublib/epub/EpubReader;Lnl/siegmann/epublib/domain/Resources;Ljava/util/Map;)Lnl/siegmann/epublib/domain/Resources;

    move-result-object p0

    .line 59
    invoke-virtual {p2, p0}, Lnl/siegmann/epublib/domain/Book;->setResources(Lnl/siegmann/epublib/domain/Resources;)V

    .line 60
    invoke-static {v0, p2}, Lnl/siegmann/epublib/epub/PackageDocumentReader;->readCover(Lorg/w3c/dom/Document;Lnl/siegmann/epublib/domain/Book;)V

    .line 61
    invoke-static {v0}, Lnl/siegmann/epublib/epub/PackageDocumentMetadataReader;->readMetadata(Lorg/w3c/dom/Document;)Lnl/siegmann/epublib/domain/Metadata;

    move-result-object p0

    invoke-virtual {p2, p0}, Lnl/siegmann/epublib/domain/Book;->setMetadata(Lnl/siegmann/epublib/domain/Metadata;)V

    .line 62
    invoke-virtual {p2}, Lnl/siegmann/epublib/domain/Book;->getResources()Lnl/siegmann/epublib/domain/Resources;

    move-result-object p0

    invoke-static {v0, p0, v1}, Lnl/siegmann/epublib/epub/PackageDocumentReader;->readSpine(Lorg/w3c/dom/Document;Lnl/siegmann/epublib/domain/Resources;Ljava/util/Map;)Lnl/siegmann/epublib/domain/Spine;

    move-result-object p0

    invoke-virtual {p2, p0}, Lnl/siegmann/epublib/domain/Book;->setSpine(Lnl/siegmann/epublib/domain/Spine;)V

    .line 65
    invoke-virtual {p2}, Lnl/siegmann/epublib/domain/Book;->getCoverPage()Lnl/siegmann/epublib/domain/Resource;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p2}, Lnl/siegmann/epublib/domain/Book;->getSpine()Lnl/siegmann/epublib/domain/Spine;

    move-result-object p0

    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Spine;->size()I

    move-result p0

    if-lez p0, :cond_0

    .line 66
    invoke-virtual {p2}, Lnl/siegmann/epublib/domain/Book;->getSpine()Lnl/siegmann/epublib/domain/Spine;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lnl/siegmann/epublib/domain/Spine;->getResource(I)Lnl/siegmann/epublib/domain/Resource;

    move-result-object p0

    invoke-virtual {p2, p0}, Lnl/siegmann/epublib/domain/Book;->setCoverPage(Lnl/siegmann/epublib/domain/Resource;)V

    :cond_0
    return-void
.end method

.method private static readCover(Lorg/w3c/dom/Document;Lnl/siegmann/epublib/domain/Book;)V
    .locals 4

    .line 360
    invoke-static {p0}, Lnl/siegmann/epublib/epub/PackageDocumentReader;->findCoverHrefs(Lorg/w3c/dom/Document;)Ljava/util/Set;

    move-result-object p0

    .line 361
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 362
    invoke-virtual {p1}, Lnl/siegmann/epublib/domain/Book;->getResources()Lnl/siegmann/epublib/domain/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnl/siegmann/epublib/domain/Resources;->getByHref(Ljava/lang/String;)Lnl/siegmann/epublib/domain/Resource;

    move-result-object v1

    if-nez v1, :cond_1

    .line 364
    sget-object v1, Lnl/siegmann/epublib/epub/PackageDocumentReader;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cover resource "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " not found"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :cond_1
    invoke-virtual {v1}, Lnl/siegmann/epublib/domain/Resource;->getMediaType()Lnl/siegmann/epublib/domain/MediaType;

    move-result-object v0

    sget-object v2, Lnl/siegmann/epublib/service/MediatypeService;->XHTML:Lnl/siegmann/epublib/domain/MediaType;

    if-ne v0, v2, :cond_2

    .line 368
    invoke-virtual {p1, v1}, Lnl/siegmann/epublib/domain/Book;->setCoverPage(Lnl/siegmann/epublib/domain/Resource;)V

    goto :goto_0

    .line 369
    :cond_2
    invoke-virtual {v1}, Lnl/siegmann/epublib/domain/Resource;->getMediaType()Lnl/siegmann/epublib/domain/MediaType;

    move-result-object v0

    invoke-static {v0}, Lnl/siegmann/epublib/service/MediatypeService;->isBitmapImage(Lnl/siegmann/epublib/domain/MediaType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {p1, v1}, Lnl/siegmann/epublib/domain/Book;->setCoverImage(Lnl/siegmann/epublib/domain/Resource;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static readGuide(Lorg/w3c/dom/Document;Lnl/siegmann/epublib/epub/EpubReader;Lnl/siegmann/epublib/domain/Book;Lnl/siegmann/epublib/domain/Resources;)V
    .locals 8

    .line 140
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    const-string p1, "http://www.idpf.org/2007/opf"

    const-string v0, "guide"

    invoke-static {p0, p1, v0}, Lnl/siegmann/epublib/epub/DOMUtil;->getFirstElementByTagNameNS(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 144
    :cond_0
    invoke-virtual {p2}, Lnl/siegmann/epublib/domain/Book;->getGuide()Lnl/siegmann/epublib/domain/Guide;

    move-result-object p2

    const-string v0, "reference"

    .line 145
    invoke-interface {p0, p1, v0}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v0, 0x0

    .line 146
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 147
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    const-string v2, "href"

    .line 148
    invoke-static {v1, p1, v2}, Lnl/siegmann/epublib/epub/DOMUtil;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-static {v2}, Lnl/siegmann/epublib/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x23

    .line 152
    invoke-static {v2, v3}, Lnl/siegmann/epublib/util/StringUtil;->substringBefore(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Lnl/siegmann/epublib/domain/Resources;->getByHref(Ljava/lang/String;)Lnl/siegmann/epublib/domain/Resource;

    move-result-object v4

    const-string v5, "Guide is referencing resource with href "

    if-nez v4, :cond_2

    .line 154
    sget-object v1, Lnl/siegmann/epublib/epub/PackageDocumentReader;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " which could not be found"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v6, "type"

    .line 157
    invoke-static {v1, p1, v6}, Lnl/siegmann/epublib/epub/DOMUtil;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 158
    invoke-static {v6}, Lnl/siegmann/epublib/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 159
    sget-object v1, Lnl/siegmann/epublib/epub/PackageDocumentReader;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " which is missing the \'type\' attribute"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v5, "title"

    .line 162
    invoke-static {v1, p1, v5}, Lnl/siegmann/epublib/epub/DOMUtil;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    sget-object v5, Lnl/siegmann/epublib/domain/GuideReference;->COVER:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    .line 166
    :cond_4
    new-instance v5, Lnl/siegmann/epublib/domain/GuideReference;

    invoke-static {v2, v3}, Lnl/siegmann/epublib/util/StringUtil;->substringAfter(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v4, v6, v1, v2}, Lnl/siegmann/epublib/domain/GuideReference;-><init>(Lnl/siegmann/epublib/domain/Resource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2, v5}, Lnl/siegmann/epublib/domain/Guide;->addReference(Lnl/siegmann/epublib/domain/GuideReference;)Lnl/siegmann/epublib/domain/ResourceReference;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private static readManifest(Lorg/w3c/dom/Document;Ljava/lang/String;Lnl/siegmann/epublib/epub/EpubReader;Lnl/siegmann/epublib/domain/Resources;Ljava/util/Map;)Lnl/siegmann/epublib/domain/Resources;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Ljava/lang/String;",
            "Lnl/siegmann/epublib/epub/EpubReader;",
            "Lnl/siegmann/epublib/domain/Resources;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lnl/siegmann/epublib/domain/Resources;"
        }
    .end annotation

    .line 93
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    const-string p1, "http://www.idpf.org/2007/opf"

    const-string p2, "manifest"

    invoke-static {p0, p1, p2}, Lnl/siegmann/epublib/epub/DOMUtil;->getFirstElementByTagNameNS(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    .line 94
    new-instance p2, Lnl/siegmann/epublib/domain/Resources;

    invoke-direct {p2}, Lnl/siegmann/epublib/domain/Resources;-><init>()V

    if-nez p0, :cond_0

    .line 96
    sget-object p0, Lnl/siegmann/epublib/epub/PackageDocumentReader;->log:Lorg/slf4j/Logger;

    const-string p1, "Package document does not contain element manifest"

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-object p2

    :cond_0
    const-string v0, "item"

    .line 99
    invoke-interface {p0, p1, v0}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v0, 0x0

    .line 100
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 101
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    const-string v2, "id"

    .line 102
    invoke-static {v1, p1, v2}, Lnl/siegmann/epublib/epub/DOMUtil;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "href"

    .line 103
    invoke-static {v1, p1, v3}, Lnl/siegmann/epublib/epub/DOMUtil;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    const-string v4, "UTF-8"

    .line 105
    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 107
    sget-object v5, Lnl/siegmann/epublib/epub/PackageDocumentReader;->log:Lorg/slf4j/Logger;

    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :goto_1
    const-string v4, "media-type"

    .line 109
    invoke-static {v1, p1, v4}, Lnl/siegmann/epublib/epub/DOMUtil;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {p3, v3}, Lnl/siegmann/epublib/domain/Resources;->remove(Ljava/lang/String;)Lnl/siegmann/epublib/domain/Resource;

    move-result-object v4

    if-nez v4, :cond_1

    .line 112
    sget-object v1, Lnl/siegmann/epublib/epub/PackageDocumentReader;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resource with href \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 115
    :cond_1
    invoke-virtual {v4, v2}, Lnl/siegmann/epublib/domain/Resource;->setId(Ljava/lang/String;)V

    .line 116
    invoke-static {v1}, Lnl/siegmann/epublib/service/MediatypeService;->getMediaTypeByName(Ljava/lang/String;)Lnl/siegmann/epublib/domain/MediaType;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 118
    invoke-virtual {v4, v1}, Lnl/siegmann/epublib/domain/Resource;->setMediaType(Lnl/siegmann/epublib/domain/MediaType;)V

    .line 120
    :cond_2
    invoke-virtual {p2, v4}, Lnl/siegmann/epublib/domain/Resources;->add(Lnl/siegmann/epublib/domain/Resource;)Lnl/siegmann/epublib/domain/Resource;

    .line 121
    invoke-virtual {v4}, Lnl/siegmann/epublib/domain/Resource;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p2
.end method

.method private static readSpine(Lorg/w3c/dom/Document;Lnl/siegmann/epublib/domain/Resources;Ljava/util/Map;)Lnl/siegmann/epublib/domain/Spine;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Lnl/siegmann/epublib/domain/Resources;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lnl/siegmann/epublib/domain/Spine;"
        }
    .end annotation

    .line 210
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "http://www.idpf.org/2007/opf"

    const-string v2, "spine"

    invoke-static {v0, v1, v2}, Lnl/siegmann/epublib/epub/DOMUtil;->getFirstElementByTagNameNS(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_0

    .line 212
    sget-object p0, Lnl/siegmann/epublib/epub/PackageDocumentReader;->log:Lorg/slf4j/Logger;

    const-string p2, "Element spine not found in package document, generating one automatically"

    invoke-interface {p0, p2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 213
    invoke-static {p1}, Lnl/siegmann/epublib/epub/PackageDocumentReader;->generateSpineFromResources(Lnl/siegmann/epublib/domain/Resources;)Lnl/siegmann/epublib/domain/Spine;

    move-result-object p0

    return-object p0

    .line 215
    :cond_0
    new-instance v2, Lnl/siegmann/epublib/domain/Spine;

    invoke-direct {v2}, Lnl/siegmann/epublib/domain/Spine;-><init>()V

    const-string v3, "toc"

    .line 216
    invoke-static {v0, v1, v3}, Lnl/siegmann/epublib/epub/DOMUtil;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    invoke-static {v0, p1}, Lnl/siegmann/epublib/epub/PackageDocumentReader;->findTableOfContentsResource(Ljava/lang/String;Lnl/siegmann/epublib/domain/Resources;)Lnl/siegmann/epublib/domain/Resource;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnl/siegmann/epublib/domain/Spine;->setTocResource(Lnl/siegmann/epublib/domain/Resource;)V

    const-string v0, "itemref"

    .line 218
    invoke-interface {p0, v1, v0}, Lorg/w3c/dom/Document;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 220
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 221
    invoke-interface {p0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    const-string v6, "idref"

    .line 222
    invoke-static {v5, v1, v6}, Lnl/siegmann/epublib/epub/DOMUtil;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 223
    invoke-static {v6}, Lnl/siegmann/epublib/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 224
    sget-object v5, Lnl/siegmann/epublib/epub/PackageDocumentReader;->log:Lorg/slf4j/Logger;

    const-string v6, "itemref with missing or empty idref"

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 227
    :cond_1
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    move-object v6, v7

    .line 231
    :goto_1
    invoke-virtual {p1, v6}, Lnl/siegmann/epublib/domain/Resources;->getByIdOrHref(Ljava/lang/String;)Lnl/siegmann/epublib/domain/Resource;

    move-result-object v7

    if-nez v7, :cond_3

    .line 233
    sget-object v5, Lnl/siegmann/epublib/epub/PackageDocumentReader;->log:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resource with id \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' not found"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 237
    :cond_3
    new-instance v6, Lnl/siegmann/epublib/domain/SpineReference;

    invoke-direct {v6, v7}, Lnl/siegmann/epublib/domain/SpineReference;-><init>(Lnl/siegmann/epublib/domain/Resource;)V

    const-string v7, "linear"

    .line 238
    invoke-static {v5, v1, v7}, Lnl/siegmann/epublib/epub/DOMUtil;->getAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "no"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 239
    invoke-virtual {v6, v3}, Lnl/siegmann/epublib/domain/SpineReference;->setLinear(Z)V

    .line 241
    :cond_4
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 243
    :cond_5
    invoke-virtual {v2, v0}, Lnl/siegmann/epublib/domain/Spine;->setSpineReferences(Ljava/util/List;)V

    return-object v2
.end method
