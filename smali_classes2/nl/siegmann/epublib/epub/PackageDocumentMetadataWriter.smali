.class public Lnl/siegmann/epublib/epub/PackageDocumentMetadataWriter;
.super Lnl/siegmann/epublib/epub/PackageDocumentBase;
.source "PackageDocumentMetadataWriter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lnl/siegmann/epublib/epub/PackageDocumentBase;-><init>()V

    return-void
.end method

.method private static writeIdentifiers(Ljava/util/List;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/Identifier;",
            ">;",
            "Lorg/xmlpull/v1/XmlSerializer;",
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

    .line 131
    invoke-static {p0}, Lnl/siegmann/epublib/domain/Identifier;->getBookIdIdentifier(Ljava/util/List;)Lnl/siegmann/epublib/domain/Identifier;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "http://purl.org/dc/elements/1.1/"

    const-string v2, "identifier"

    .line 136
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, ""

    const-string v4, "id"

    const-string v5, "BookId"

    .line 137
    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 138
    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/Identifier;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http://www.idpf.org/2007/opf"

    const-string v5, "scheme"

    invoke-interface {p1, v4, v5, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 139
    invoke-virtual {v0}, Lnl/siegmann/epublib/domain/Identifier;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 140
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v3, 0x1

    .line 142
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p0, v3, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnl/siegmann/epublib/domain/Identifier;

    if-ne v3, v0, :cond_1

    goto :goto_0

    .line 146
    :cond_1
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 147
    invoke-virtual {v3}, Lnl/siegmann/epublib/domain/Identifier;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 148
    invoke-virtual {v3}, Lnl/siegmann/epublib/domain/Identifier;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static writeMetaData(Lnl/siegmann/epublib/domain/Book;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "http://www.idpf.org/2007/opf"

    const-string v1, "metadata"

    .line 31
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "dc"

    const-string v3, "http://purl.org/dc/elements/1.1/"

    .line 32
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "opf"

    .line 33
    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getMetadata()Lnl/siegmann/epublib/domain/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lnl/siegmann/epublib/domain/Metadata;->getIdentifiers()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, p1}, Lnl/siegmann/epublib/epub/PackageDocumentMetadataWriter;->writeIdentifiers(Ljava/util/List;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 36
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getMetadata()Lnl/siegmann/epublib/domain/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lnl/siegmann/epublib/domain/Metadata;->getTitles()Ljava/util/List;

    move-result-object v2

    const-string v4, "title"

    invoke-static {v4, v2, p1}, Lnl/siegmann/epublib/epub/PackageDocumentMetadataWriter;->writeSimpleMetdataElements(Ljava/lang/String;Ljava/util/List;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 37
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getMetadata()Lnl/siegmann/epublib/domain/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lnl/siegmann/epublib/domain/Metadata;->getSubjects()Ljava/util/List;

    move-result-object v2

    const-string v4, "subject"

    invoke-static {v4, v2, p1}, Lnl/siegmann/epublib/epub/PackageDocumentMetadataWriter;->writeSimpleMetdataElements(Ljava/lang/String;Ljava/util/List;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 38
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getMetadata()Lnl/siegmann/epublib/domain/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lnl/siegmann/epublib/domain/Metadata;->getDescriptions()Ljava/util/List;

    move-result-object v2

    const-string v4, "description"

    invoke-static {v4, v2, p1}, Lnl/siegmann/epublib/epub/PackageDocumentMetadataWriter;->writeSimpleMetdataElements(Ljava/lang/String;Ljava/util/List;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 39
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getMetadata()Lnl/siegmann/epublib/domain/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lnl/siegmann/epublib/domain/Metadata;->getPublishers()Ljava/util/List;

    move-result-object v2

    const-string v4, "publisher"

    invoke-static {v4, v2, p1}, Lnl/siegmann/epublib/epub/PackageDocumentMetadataWriter;->writeSimpleMetdataElements(Ljava/lang/String;Ljava/util/List;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 40
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getMetadata()Lnl/siegmann/epublib/domain/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lnl/siegmann/epublib/domain/Metadata;->getTypes()Ljava/util/List;

    move-result-object v2

    const-string v4, "type"

    invoke-static {v4, v2, p1}, Lnl/siegmann/epublib/epub/PackageDocumentMetadataWriter;->writeSimpleMetdataElements(Ljava/lang/String;Ljava/util/List;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 41
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getMetadata()Lnl/siegmann/epublib/domain/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lnl/siegmann/epublib/domain/Metadata;->getRights()Ljava/util/List;

    move-result-object v2

    const-string v4, "rights"

    invoke-static {v4, v2, p1}, Lnl/siegmann/epublib/epub/PackageDocumentMetadataWriter;->writeSimpleMetdataElements(Ljava/lang/String;Ljava/util/List;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 44
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getMetadata()Lnl/siegmann/epublib/domain/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lnl/siegmann/epublib/domain/Metadata;->getAuthors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, " "

    const-string v6, ", "

    const-string v7, "file-as"

    const-string v8, "role"

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnl/siegmann/epublib/domain/Author;

    const-string v9, "creator"

    .line 45
    invoke-interface {p1, v3, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 46
    invoke-virtual {v4}, Lnl/siegmann/epublib/domain/Author;->getRelator()Lnl/siegmann/epublib/domain/Relator;

    move-result-object v10

    invoke-virtual {v10}, Lnl/siegmann/epublib/domain/Relator;->getCode()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v0, v8, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 47
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lnl/siegmann/epublib/domain/Author;->getLastname()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lnl/siegmann/epublib/domain/Author;->getFirstname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v0, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 48
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lnl/siegmann/epublib/domain/Author;->getFirstname()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lnl/siegmann/epublib/domain/Author;->getLastname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 49
    invoke-interface {p1, v3, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getMetadata()Lnl/siegmann/epublib/domain/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lnl/siegmann/epublib/domain/Metadata;->getContributors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnl/siegmann/epublib/domain/Author;

    const-string v9, "contributor"

    .line 54
    invoke-interface {p1, v3, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 55
    invoke-virtual {v4}, Lnl/siegmann/epublib/domain/Author;->getRelator()Lnl/siegmann/epublib/domain/Relator;

    move-result-object v10

    invoke-virtual {v10}, Lnl/siegmann/epublib/domain/Relator;->getCode()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v0, v8, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 56
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lnl/siegmann/epublib/domain/Author;->getLastname()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lnl/siegmann/epublib/domain/Author;->getFirstname()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v0, v7, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 57
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lnl/siegmann/epublib/domain/Author;->getFirstname()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lnl/siegmann/epublib/domain/Author;->getLastname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 58
    invoke-interface {p1, v3, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 62
    :cond_1
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getMetadata()Lnl/siegmann/epublib/domain/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lnl/siegmann/epublib/domain/Metadata;->getDates()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnl/siegmann/epublib/domain/Date;

    const-string v5, "date"

    .line 63
    invoke-interface {p1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    invoke-virtual {v4}, Lnl/siegmann/epublib/domain/Date;->getEvent()Lnl/siegmann/epublib/domain/Date$Event;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 65
    invoke-virtual {v4}, Lnl/siegmann/epublib/domain/Date;->getEvent()Lnl/siegmann/epublib/domain/Date$Event;

    move-result-object v6

    invoke-virtual {v6}, Lnl/siegmann/epublib/domain/Date$Event;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "event"

    invoke-interface {p1, v0, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 67
    :cond_2
    invoke-virtual {v4}, Lnl/siegmann/epublib/domain/Date;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 68
    invoke-interface {p1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    .line 72
    :cond_3
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getMetadata()Lnl/siegmann/epublib/domain/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lnl/siegmann/epublib/domain/Metadata;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnl/siegmann/epublib/util/StringUtil;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "language"

    .line 73
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getMetadata()Lnl/siegmann/epublib/domain/Metadata;

    move-result-object v4

    invoke-virtual {v4}, Lnl/siegmann/epublib/domain/Metadata;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 75
    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    :cond_4
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getMetadata()Lnl/siegmann/epublib/domain/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lnl/siegmann/epublib/domain/Metadata;->getOtherProperties()Ljava/util/Map;

    move-result-object v2

    const-string v3, ""

    const-string v4, "meta"

    if-eqz v2, :cond_5

    .line 80
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getMetadata()Lnl/siegmann/epublib/domain/Metadata;

    move-result-object v2

    invoke-virtual {v2}, Lnl/siegmann/epublib/domain/Metadata;->getOtherProperties()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 81
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/xml/namespace/QName;

    invoke-virtual {v6}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/xml/namespace/QName;

    invoke-virtual {v6}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    const-string v7, "property"

    invoke-interface {p1, v3, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {p1, v6}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 84
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/xml/namespace/QName;

    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3

    .line 90
    :cond_5
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getCoverImage()Lnl/siegmann/epublib/domain/Resource;

    move-result-object v2

    const-string v5, "content"

    const-string v6, "name"

    if-eqz v2, :cond_6

    .line 91
    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "cover"

    .line 92
    invoke-interface {p1, v3, v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Book;->getCoverImage()Lnl/siegmann/epublib/domain/Resource;

    move-result-object p0

    invoke-virtual {p0}, Lnl/siegmann/epublib/domain/Resource;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v3, v5, p0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 98
    :cond_6
    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p0, "generator"

    .line 99
    invoke-interface {p1, v3, v6, p0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string p0, "EPUBLib version 3.0"

    .line 100
    invoke-interface {p1, v3, v5, p0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 101
    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private static writeSimpleMetdataElements(Ljava/lang/String;Ljava/util/List;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/xmlpull/v1/XmlSerializer;",
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

    .line 107
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    invoke-static {v0}, Lnl/siegmann/epublib/util/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "http://purl.org/dc/elements/1.1/"

    .line 111
    invoke-interface {p2, v1, p0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 112
    invoke-interface {p2, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    invoke-interface {p2, v1, p0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_1
    return-void
.end method
