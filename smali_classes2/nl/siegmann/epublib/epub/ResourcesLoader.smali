.class public Lnl/siegmann/epublib/epub/ResourcesLoader;
.super Ljava/lang/Object;
.source "ResourcesLoader.java"


# static fields
.field private static final LOG:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lnl/siegmann/epublib/epub/ResourcesLoader;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lnl/siegmann/epublib/epub/ResourcesLoader;->LOG:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getNextZipEntry(Lnet/sf/jazzlib/ZipInputStream;)Lnet/sf/jazzlib/ZipEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/jazzlib/ZipInputStream;->getNextEntry()Lnet/sf/jazzlib/ZipEntry;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/jazzlib/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 133
    sget-object v1, Lnl/siegmann/epublib/epub/ResourcesLoader;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Invalid or damaged zip file."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 134
    :try_start_1
    invoke-virtual {p0}, Lnet/sf/jazzlib/ZipInputStream;->closeEntry()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    :catch_1
    throw v0
.end method

.method public static loadResources(Lnet/sf/jazzlib/ZipFile;Ljava/lang/String;)Lnl/siegmann/epublib/domain/Resources;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lnl/siegmann/epublib/epub/ResourcesLoader;->loadResources(Lnet/sf/jazzlib/ZipFile;Ljava/lang/String;Ljava/util/List;)Lnl/siegmann/epublib/domain/Resources;

    move-result-object p0

    return-object p0
.end method

.method public static loadResources(Lnet/sf/jazzlib/ZipFile;Ljava/lang/String;Ljava/util/List;)Lnl/siegmann/epublib/domain/Resources;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/jazzlib/ZipFile;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnl/siegmann/epublib/domain/MediaType;",
            ">;)",
            "Lnl/siegmann/epublib/domain/Resources;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    new-instance v0, Lnl/siegmann/epublib/domain/Resources;

    invoke-direct {v0}, Lnl/siegmann/epublib/domain/Resources;-><init>()V

    .line 50
    invoke-virtual {p0}, Lnet/sf/jazzlib/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 52
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 53
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/jazzlib/ZipEntry;

    if-eqz v2, :cond_0

    .line 55
    invoke-virtual {v2}, Lnet/sf/jazzlib/ZipEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v2}, Lnet/sf/jazzlib/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-static {v3, p2}, Lnl/siegmann/epublib/epub/ResourcesLoader;->shouldLoadLazy(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 64
    new-instance v4, Lnl/siegmann/epublib/domain/LazyResource;

    invoke-virtual {p0}, Lnet/sf/jazzlib/ZipFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lnet/sf/jazzlib/ZipEntry;->getSize()J

    move-result-wide v6

    invoke-direct {v4, v5, v6, v7, v3}, Lnl/siegmann/epublib/domain/LazyResource;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1

    .line 66
    :cond_2
    invoke-virtual {p0, v2}, Lnet/sf/jazzlib/ZipFile;->getInputStream(Lnet/sf/jazzlib/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v2, v3}, Lnl/siegmann/epublib/util/ResourceUtil;->createResource(Lnet/sf/jazzlib/ZipEntry;Ljava/io/InputStream;)Lnl/siegmann/epublib/domain/Resource;

    move-result-object v4

    .line 69
    :goto_1
    invoke-virtual {v4}, Lnl/siegmann/epublib/domain/Resource;->getMediaType()Lnl/siegmann/epublib/domain/MediaType;

    move-result-object v2

    sget-object v3, Lnl/siegmann/epublib/service/MediatypeService;->XHTML:Lnl/siegmann/epublib/domain/MediaType;

    if-ne v2, v3, :cond_3

    .line 70
    invoke-virtual {v4, p1}, Lnl/siegmann/epublib/domain/Resource;->setInputEncoding(Ljava/lang/String;)V

    .line 72
    :cond_3
    invoke-virtual {v0, v4}, Lnl/siegmann/epublib/domain/Resources;->add(Lnl/siegmann/epublib/domain/Resource;)Lnl/siegmann/epublib/domain/Resource;

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static loadResources(Lnet/sf/jazzlib/ZipInputStream;Ljava/lang/String;)Lnl/siegmann/epublib/domain/Resources;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    new-instance v0, Lnl/siegmann/epublib/domain/Resources;

    invoke-direct {v0}, Lnl/siegmann/epublib/domain/Resources;-><init>()V

    .line 109
    :cond_0
    invoke-static {p0}, Lnl/siegmann/epublib/epub/ResourcesLoader;->getNextZipEntry(Lnet/sf/jazzlib/ZipInputStream;)Lnet/sf/jazzlib/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 110
    invoke-virtual {v1}, Lnet/sf/jazzlib/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 115
    :cond_1
    invoke-static {v1, p0}, Lnl/siegmann/epublib/util/ResourceUtil;->createResource(Lnet/sf/jazzlib/ZipEntry;Lnet/sf/jazzlib/ZipInputStream;)Lnl/siegmann/epublib/domain/Resource;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Lnl/siegmann/epublib/domain/Resource;->getMediaType()Lnl/siegmann/epublib/domain/MediaType;

    move-result-object v3

    sget-object v4, Lnl/siegmann/epublib/service/MediatypeService;->XHTML:Lnl/siegmann/epublib/domain/MediaType;

    if-ne v3, v4, :cond_2

    .line 117
    invoke-virtual {v2, p1}, Lnl/siegmann/epublib/domain/Resource;->setInputEncoding(Ljava/lang/String;)V

    .line 119
    :cond_2
    invoke-virtual {v0, v2}, Lnl/siegmann/epublib/domain/Resources;->add(Lnl/siegmann/epublib/domain/Resource;)Lnl/siegmann/epublib/domain/Resource;

    :cond_3
    :goto_0
    if-nez v1, :cond_0

    return-object v0
.end method

.method private static shouldLoadLazy(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lnl/siegmann/epublib/domain/MediaType;",
            ">;)Z"
        }
    .end annotation

    .line 86
    invoke-static {p1}, Lnl/siegmann/epublib/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 89
    :cond_0
    invoke-static {p0}, Lnl/siegmann/epublib/service/MediatypeService;->determineMediaType(Ljava/lang/String;)Lnl/siegmann/epublib/domain/MediaType;

    move-result-object p0

    .line 90
    invoke-interface {p1, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
