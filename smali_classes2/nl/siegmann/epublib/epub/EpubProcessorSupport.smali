.class public Lnl/siegmann/epublib/epub/EpubProcessorSupport;
.super Ljava/lang/Object;
.source "EpubProcessorSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnl/siegmann/epublib/epub/EpubProcessorSupport$EntityResolverImpl;
    }
.end annotation


# static fields
.field protected static documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lnl/siegmann/epublib/epub/EpubProcessorSupport;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lnl/siegmann/epublib/epub/EpubProcessorSupport;->log:Lorg/slf4j/Logger;

    .line 38
    invoke-static {}, Lnl/siegmann/epublib/epub/EpubProcessorSupport;->init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .locals 3

    const/4 v0, 0x0

    .line 114
    :try_start_0
    sget-object v1, Lnl/siegmann/epublib/epub/EpubProcessorSupport;->documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 115
    invoke-static {}, Lnl/siegmann/epublib/epub/EpubProcessorSupport;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 117
    sget-object v2, Lnl/siegmann/epublib/epub/EpubProcessorSupport;->log:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static createXmlSerializer(Ljava/io/OutputStream;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 73
    new-instance v0, Ljava/io/OutputStreamWriter;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lnl/siegmann/epublib/epub/EpubProcessorSupport;->createXmlSerializer(Ljava/io/Writer;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    return-object p0
.end method

.method public static createXmlSerializer(Ljava/io/Writer;)Lorg/xmlpull/v1/XmlSerializer;
    .locals 4

    const/4 v0, 0x0

    .line 79
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    const/4 v2, 0x1

    .line 80
    invoke-virtual {v1, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setValidating(Z)V

    .line 81
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, "http://xmlpull.org/v1/doc/features.html#indent-output"

    .line 82
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 83
    invoke-interface {v0, p0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 85
    sget-object v1, Lnl/siegmann/epublib/epub/EpubProcessorSupport;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "When creating XmlSerializer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    .line 99
    new-instance v0, Lnl/siegmann/epublib/epub/EpubProcessorSupport$EntityResolverImpl;

    invoke-direct {v0}, Lnl/siegmann/epublib/epub/EpubProcessorSupport$EntityResolverImpl;-><init>()V

    return-object v0
.end method

.method private static init()V
    .locals 2

    .line 67
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    sput-object v0, Lnl/siegmann/epublib/epub/EpubProcessorSupport;->documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v1, 0x1

    .line 68
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 69
    sget-object v0, Lnl/siegmann/epublib/epub/EpubProcessorSupport;->documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    return-void
.end method


# virtual methods
.method public getDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;
    .locals 1

    .line 103
    sget-object v0, Lnl/siegmann/epublib/epub/EpubProcessorSupport;->documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    return-object v0
.end method
