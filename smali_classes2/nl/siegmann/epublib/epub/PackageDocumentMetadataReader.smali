.class Lnl/siegmann/epublib/epub/PackageDocumentMetadataReader;
.super Lnl/siegmann/epublib/epub/PackageDocumentBase;
.source "PackageDocumentMetadataReader.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lnl/siegmann/epublib/epub/PackageDocumentMetadataReader;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lnl/siegmann/epublib/epub/PackageDocumentMetadataReader;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lnl/siegmann/epublib/epub/PackageDocumentBase;-><init>()V

    return-void
.end method

.method private static createAuthor(Lorg/w3c/dom/Element;)Lnl/siegmann/epublib/domain/Author;
    .locals 4

    .line 156
    invoke-static {p0}, Lnl/siegmann/epublib/epub/DOMUtil;->getTextChildrenContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {v0}, Lnl/siegmann/epublib/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v1, 0x20

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    .line 163
    new-instance v1, Lnl/siegmann/epublib/domain/Author;

    invoke-direct {v1, v0}, Lnl/siegmann/epublib/domain/Author;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_1
    new-instance v2, Lnl/siegmann/epublib/domain/Author;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lnl/siegmann/epublib/domain/Author;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    const-string v0, "http://www.idpf.org/2007/opf"

    const-string v2, "role"

    .line 167
    invoke-interface {p0, v0, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lnl/siegmann/epublib/domain/Author;->setRole(Ljava/lang/String;)Lnl/siegmann/epublib/domain/Relator;

    return-object v1
.end method

.method private static getBookIdId(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 2

    .line 108
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    const-string v0, "http://www.idpf.org/2007/opf"

    const-string v1, "package"

    invoke-static {p0, v0, v1}, Lnl/siegmann/epublib/epub/DOMUtil;->getFirstElementByTagNameNS(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "unique-identifier"

    .line 112
    invoke-interface {p0, v0, v1}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static readAuthors(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/Author;",
            ">;"
        }
    .end annotation

    const-string v0, "http://purl.org/dc/elements/1.1/"

    .line 125
    invoke-interface {p1, v0, p0}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 126
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    .line 127
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 128
    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 129
    invoke-static {v1}, Lnl/siegmann/epublib/epub/PackageDocumentMetadataReader;->createAuthor(Lorg/w3c/dom/Element;)Lnl/siegmann/epublib/domain/Author;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 131
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private static readContributors(Lorg/w3c/dom/Element;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/Author;",
            ">;"
        }
    .end annotation

    const-string v0, "contributor"

    .line 121
    invoke-static {v0, p0}, Lnl/siegmann/epublib/epub/PackageDocumentMetadataReader;->readAuthors(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static readCreators(Lorg/w3c/dom/Element;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/Author;",
            ">;"
        }
    .end annotation

    const-string v0, "creator"

    .line 117
    invoke-static {v0, p0}, Lnl/siegmann/epublib/epub/PackageDocumentMetadataReader;->readAuthors(Ljava/lang/String;Lorg/w3c/dom/Element;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static readDates(Lorg/w3c/dom/Element;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/Date;",
            ">;"
        }
    .end annotation

    const-string v0, "http://purl.org/dc/elements/1.1/"

    const-string v1, "date"

    .line 139
    invoke-interface {p0, v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 141
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 142
    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 145
    :try_start_0
    new-instance v3, Lnl/siegmann/epublib/domain/Date;

    invoke-static {v2}, Lnl/siegmann/epublib/epub/DOMUtil;->getTextChildrenContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://www.idpf.org/2007/opf"

    const-string v6, "event"

    invoke-interface {v2, v5, v6}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lnl/siegmann/epublib/domain/Date;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 148
    sget-object v3, Lnl/siegmann/epublib/epub/PackageDocumentMetadataReader;->log:Lorg/slf4j/Logger;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static readIdentifiers(Lorg/w3c/dom/Element;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/Identifier;",
            ">;"
        }
    .end annotation

    const-string v0, "http://purl.org/dc/elements/1.1/"

    const-string v1, "identifier"

    .line 173
    invoke-interface {p0, v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 174
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-nez v1, :cond_0

    .line 175
    sget-object p0, Lnl/siegmann/epublib/epub/PackageDocumentMetadataReader;->log:Lorg/slf4j/Logger;

    const-string v0, "Package does not contain element identifier"

    invoke-interface {p0, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 176
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 178
    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-static {p0}, Lnl/siegmann/epublib/epub/PackageDocumentMetadataReader;->getBookIdId(Lorg/w3c/dom/Document;)Ljava/lang/String;

    move-result-object p0

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 180
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 181
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    const-string v4, "http://www.idpf.org/2007/opf"

    const-string v5, "scheme"

    .line 182
    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 183
    invoke-static {v3}, Lnl/siegmann/epublib/epub/DOMUtil;->getTextChildrenContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v5

    .line 184
    invoke-static {v5}, Lnl/siegmann/epublib/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_1

    .line 187
    :cond_1
    new-instance v6, Lnl/siegmann/epublib/domain/Identifier;

    invoke-direct {v6, v4, v5}, Lnl/siegmann/epublib/domain/Identifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "id"

    .line 188
    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    .line 189
    invoke-virtual {v6, v3}, Lnl/siegmann/epublib/domain/Identifier;->setBookId(Z)V

    .line 191
    :cond_2
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private static readMetaProperties(Lorg/w3c/dom/Element;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "meta"

    .line 96
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v1, 0x0

    .line 97
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 98
    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    const-string v3, "name"

    .line 99
    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    .line 100
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static readMetadata(Lorg/w3c/dom/Document;)Lnl/siegmann/epublib/domain/Metadata;
    .locals 3

    .line 37
    new-instance v0, Lnl/siegmann/epublib/domain/Metadata;

    invoke-direct {v0}, Lnl/siegmann/epublib/domain/Metadata;-><init>()V

    .line 38
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p0

    const-string v1, "http://www.idpf.org/2007/opf"

    const-string v2, "metadata"

    invoke-static {p0, v1, v2}, Lnl/siegmann/epublib/epub/DOMUtil;->getFirstElementByTagNameNS(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    if-nez p0, :cond_0

    .line 40
    sget-object p0, Lnl/siegmann/epublib/epub/PackageDocumentMetadataReader;->log:Lorg/slf4j/Logger;

    const-string v1, "Package does not contain element metadata"

    invoke-interface {p0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v1, "http://purl.org/dc/elements/1.1/"

    const-string v2, "title"

    .line 43
    invoke-static {p0, v1, v2}, Lnl/siegmann/epublib/epub/DOMUtil;->getElementsTextChild(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnl/siegmann/epublib/domain/Metadata;->setTitles(Ljava/util/List;)V

    const-string v2, "publisher"

    .line 44
    invoke-static {p0, v1, v2}, Lnl/siegmann/epublib/epub/DOMUtil;->getElementsTextChild(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnl/siegmann/epublib/domain/Metadata;->setPublishers(Ljava/util/List;)V

    const-string v2, "description"

    .line 45
    invoke-static {p0, v1, v2}, Lnl/siegmann/epublib/epub/DOMUtil;->getElementsTextChild(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnl/siegmann/epublib/domain/Metadata;->setDescriptions(Ljava/util/List;)V

    const-string v2, "rights"

    .line 46
    invoke-static {p0, v1, v2}, Lnl/siegmann/epublib/epub/DOMUtil;->getElementsTextChild(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnl/siegmann/epublib/domain/Metadata;->setRights(Ljava/util/List;)V

    const-string v2, "type"

    .line 47
    invoke-static {p0, v1, v2}, Lnl/siegmann/epublib/epub/DOMUtil;->getElementsTextChild(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnl/siegmann/epublib/domain/Metadata;->setTypes(Ljava/util/List;)V

    const-string v2, "subject"

    .line 48
    invoke-static {p0, v1, v2}, Lnl/siegmann/epublib/epub/DOMUtil;->getElementsTextChild(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnl/siegmann/epublib/domain/Metadata;->setSubjects(Ljava/util/List;)V

    .line 49
    invoke-static {p0}, Lnl/siegmann/epublib/epub/PackageDocumentMetadataReader;->readIdentifiers(Lorg/w3c/dom/Element;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnl/siegmann/epublib/domain/Metadata;->setIdentifiers(Ljava/util/List;)V

    .line 50
    invoke-static {p0}, Lnl/siegmann/epublib/epub/PackageDocumentMetadataReader;->readCreators(Lorg/w3c/dom/Element;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnl/siegmann/epublib/domain/Metadata;->setAuthors(Ljava/util/List;)V

    .line 51
    invoke-static {p0}, Lnl/siegmann/epublib/epub/PackageDocumentMetadataReader;->readContributors(Lorg/w3c/dom/Element;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnl/siegmann/epublib/domain/Metadata;->setContributors(Ljava/util/List;)V

    .line 52
    invoke-static {p0}, Lnl/siegmann/epublib/epub/PackageDocumentMetadataReader;->readDates(Lorg/w3c/dom/Element;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnl/siegmann/epublib/domain/Metadata;->setDates(Ljava/util/List;)V

    .line 53
    invoke-static {p0}, Lnl/siegmann/epublib/epub/PackageDocumentMetadataReader;->readOtherProperties(Lorg/w3c/dom/Element;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnl/siegmann/epublib/domain/Metadata;->setOtherProperties(Ljava/util/Map;)V

    .line 54
    invoke-static {p0}, Lnl/siegmann/epublib/epub/PackageDocumentMetadataReader;->readMetaProperties(Lorg/w3c/dom/Element;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnl/siegmann/epublib/domain/Metadata;->setMetaAttributes(Ljava/util/Map;)V

    const-string v2, "language"

    .line 55
    invoke-static {p0, v1, v2}, Lnl/siegmann/epublib/epub/DOMUtil;->getFirstElementByTagNameNS(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 57
    invoke-static {p0}, Lnl/siegmann/epublib/epub/DOMUtil;->getTextChildrenContent(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnl/siegmann/epublib/domain/Metadata;->setLanguage(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method private static readOtherProperties(Lorg/w3c/dom/Element;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/util/Map<",
            "Ljavax/xml/namespace/QName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "meta"

    .line 73
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v1, 0x0

    .line 74
    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 75
    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 76
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    const-string v4, "property"

    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 78
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v2

    .line 80
    new-instance v4, Ljavax/xml/namespace/QName;

    invoke-direct {v4, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
